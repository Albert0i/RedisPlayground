import fs from 'fs'
import Redis from 'ioredis'

// Create a new Redis client
const redis = new Redis({
        host: '127.0.0.1',
        port: 7000, 
        password: '',
    });

// Read the JSON file
fs.readFile('data/families.json', 'utf8', (err, data) => {
    if (err) {
        console.error('Error reading the JSON file:', err);
        return;
    }

    // Parse the JSON data
    const json = JSON.parse(data);

    // Loop through each rental and generate JSON.SET commands
    json.families.forEach((family) => {
        const familyId = `family:${family.familyId}`; // Create a unique key for each rental
        //redis.json.set(rentalId, '$', rental)
        redis.call("JSON.SET", familyId, '$', JSON.stringify(family))
            .then(() => {
                console.log(`Inserted ${familyId} into Redis`);
            })
            .catch((error) => {
                console.error(`Error inserting ${familyId} into Redis:`, error);
            });
    });

    // Close the Redis connection after a short delay to ensure all operations complete
    setTimeout(() => {
        redis.disconnect();
    }, 1000);
});

/*
   node src/families.js 
*/